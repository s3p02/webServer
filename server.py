import http.server
import socketserver
import yaml
import logging
import sys

def runServer():
    configsPath = '/Users/sharan_sreesai/Documents/webServer/'
    serverConfigs = (row for row in open(configsPath+'configs.yaml'))
    PORT = int(list(serverConfigs)[0].split("webServerPort :")[1])
    Handler = http.server.SimpleHTTPRequestHandler
    with socketserver.TCPServer(("", PORT), Handler) as httpd:
        logging.info("WEBSERVER RUNNING AT PORT : "+str(PORT))
        httpd.serve_forever()

def main():
    runServer()

if __name__ == "__main__":
    logging.basicConfig(stream=sys.stdout, level=logging.DEBUG)
    main()