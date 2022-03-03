host="fabmedical-552752.documents.azure.com"
username="fabmedical-552752"
password="WFwaH1ni8y1aWJHky6XMPz7AaARHIbpqqLtUmNFfxM8yxp8305eqQ3wYL0VKbkiRA7uYg50O0bY7yMXGYebBJA=="
dbname="contentdb"
port="10255"

for i in {1..250}; do
    mongo $host:$port/$dbname \
        -u $username -p $password \
        --ssl --sslAllowInvalidCertificates \
        --eval 'db.sessions.insert({"title":"Perf Test"})' &
done
