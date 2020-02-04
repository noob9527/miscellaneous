# Recipe

### Delete all terminating pod
delete specified one
```bash
kubectl delete pod <PODNAME> --grace-period=0 --force --namespace <NAMESPACE>
```
delete all
```bash
for p in $(kubectl get pods | grep Terminating | awk '{print $1}'); do kubectl delete pod $p --grace-period=0 --force;done
```
reference:
- [Pods stuck in Terminating status](https://stackoverflow.com/questions/35453792/pods-stuck-in-terminating-status)
