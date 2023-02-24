### keyword vs text
- [Difference between keyword and text in ElasticSearch](https://stackoverflow.com/questions/52845088/difference-between-keyword-and-text-in-elasticsearch)

### query_string match exact phrase
```json
// GET testingindex/_search
{
  "query": {
    "bool": {
      "must": [
        {
          "query_string": {
            "fields": [
              "name"
            ],
            "query":"(\"testing af\") OR (\"banna af\") OR (\"badfadfaf\")"
          }
        }
      ]
    }
  }
}
```

- [Elastic search how to make query_string match Exact phrase](https://stackoverflow.com/questions/55646622/elastic-search-how-to-make-query-string-match-exact-phrase)