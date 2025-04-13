local response = http_request({
    Url = "https://httpbin.org/headers",
    Method = "GET",
    Headers = {
        ["User-Agent"] = "crystal by mati at discord.gg/getcrystal"
    }
})

print(response.Body)
print("[crystal] initialized http_request")
