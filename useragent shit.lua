local response = http_request({
    Url = "https://httpbin.org/headers",
    Method = "GET",
    Headers = {
        ["User-Agent"] = "CrystalAPI"
    }
})

print(response.Body)
print("[crystal] initialized http_request")
