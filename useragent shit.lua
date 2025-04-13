local response = http_request({
    Url = "https://httpbin.org/headers",
    Method = "GET",
    Headers = {
        ["User-Agent"] = "crystalapi"
    }
})

print(response.Body)
print("[crystal] request done")
