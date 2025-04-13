local http_functions = {
    http_request,
    request,
    syn and syn.request,
    http and http.request
}

for _, func in ipairs(http_functions) do
    if type(func) == "function" then
        local response = func({
            Url = "https://httpbin.org/headers", 
            Method = "GET",
            Headers = {
                ["User-Agent"] = "crystalapi"
            }
        })

        print("✅ Sent with function:", tostring(func))
        print("📨 Response:")
        print(response.Body)
        break
    end
end
