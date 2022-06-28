# SIGTERM vs SIGINT vs SIGKILL
example1: setup shutdown hook for jvm executor service
```kotlin
private val executor = Executors.newSingleThreadExecutor()

@PostConstruct
fun postConstruct() {
    val executor_name = "executor"
    logger.info("register shutdown hook in order to shutdown $executor_name gracefully")
    Runtime.getRuntime().addShutdownHook(Thread {
        try {
            executor.shutdown()
            logger.info("we are trying to shutdown $executor_name gracefully")
            if(!executor.awaitTermination(10, TimeUnit.MINUTES)) {
                logger.error("about to terminate $executor_name immediately, failed to shutdown $executor_name gracefully!")
                executor.shutdownNow()
            }
            logger.info("$executor_name has been shut down gracefully")
        } catch (e: Throwable) {
            e.printStackTrace()
            logger.error("exception occured! about to terminate $executor_name immediately, failed to shutdown $executor_name gracefully!")
            executor.shutdownNow()
            Thread.currentThread().interrupt()
        }
    })
}
```

If your pod usually takes longer than 30 seconds to shut down, make sure you increase the grace period. You can do that by setting the terminationGracePeriodSeconds option in the Pod YAML
example2: set grace period to 30 minutes.
```yaml
      containers:
        - name: ${JOB_NAME}-${BRANCH}
          image: repo.d.k8s/${JOB_NAME}-${BRANCH}:${BUILD_NUMBER}
          livenessProbe:
            httpGet:
              path: /actuator/health
              port: 80
              scheme: HTTP
            initialDelaySeconds: 60
            timeoutSeconds: 5
            successThreshold: 1
            failureThreshold: 5
          readinessProbe:
            httpGet:
              path: /actuator/health
              port: 80
              scheme: HTTP
            initialDelaySeconds: 15
            timeoutSeconds: 5
            successThreshold: 1
            failureThreshold: 5
      terminationGracePeriodSeconds: 1800 # set grace period to 30 minutes, by default, this is 30 seconds.
```

### references
- [SIGINT And Other Termination Signals in Linux](https://www.baeldung.com/linux/sigint-and-other-termination-signals)
- [how to handle the sigkill signal in java](https://stackoverflow.com/questions/2541597/how-to-gracefully-handle-the-sigkill-signal-in-java)
- [Kubernetes best practices: terminating with grace](https://cloud.google.com/blog/products/containers-kubernetes/kubernetes-best-practices-terminating-with-grace)