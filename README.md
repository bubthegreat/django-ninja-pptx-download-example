# How To Try it Out

```
docker build -t pptx-export .
docker run --rm -p 8000:8000 pptx-export
```

Navigate to http://127.0.0.1:8000/api/docs#

Take this sample data and post: 
```
{
  "columns": [
    "string1",
    "string2",
    "string3",
    "string4"
  ],
  "data": [
    0,
    4,
    6,
    1
  ]
}
```
