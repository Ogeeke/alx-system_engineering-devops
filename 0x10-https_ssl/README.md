0x10. HTTPS SSL
0. HTTPS ABC mandatory
As for project 0x07, use numbers in your answer file.

What is HTTPS?

A secure version of HTTP
A faster version of HTTP
A superior version of HTTP
Why do you need HTTPS?

To encrypt credit card and social security number information going between the client and the website servers
To encrypt all communication between the client and the website servers
To accelerate the communication between the client and the website servers
You want to setup HTTPS on your website, where shall you place the certificate?

In a secure location where nobody can access it
You can host it anywhere but you have to share the link to it on your website
On your website web server(s)
1. World wide web mandatory
Configure your domain zone so that the subdomain www points to your load-balancer IP (lb-01). Let’s also add other subdomains to make our life easier, and write a Bash script that will display information about subdomains.

Requirements:

Add the subdomain www to your domain, point it to your lb-01 IP (your domain name might be configured with default subdomains, feel free to remove them)
Add the subdomain lb-01 to your domain, point it to your lb-01 IP
Add the subdomain web-01 to your domain, point it to your web-01 IP
Add the subdomain web-02 to your domain, point it to your web-02 IP
Your Bash script must accept 2 arguments:
domain:
type: string
what: domain name to audit
mandatory: yes
subdomain:
type: string
what: specific subdomain to audit
mandatory: no
Output: The subdomain [SUB_DOMAIN] is a [RECORD_TYPE] record and points to [DESTINATION]
When only the parameter domain is provided, display information for its subdomains www, lb-01, web-01 and web-02 - in this specific order
When passing domain and subdomain parameters, display information for the specified subdomain
Ignore shellcheck case SC2086
Must use:
awk
at least one Bash function
You do not need to handle edge cases such as:
Empty parameters
Nonexistent domain names
Nonexistent subdomains
Example:

2. HAproxy SSL termination mandatory
“Terminating SSL on HAproxy” means that HAproxy is configured to handle encrypted traffic, unencrypt it and pass it on to the next hope.

Create a certificate using certbot and configure HAproxy to accept encrypted traffic for your subdomain www..

Requirements:

HAproxy must be listening on port TCP 443
HAproxy must be accepting SSL traffic
HAproxy must serve encrypted traffic that will return the / of your web server
When querying the root of your domain name, the page returned must contain Holberton School
Share your HAproxy config as an answer file (/etc/haproxy/haproxy.cfg)
Make sure to install HAproxy 1.5 or higher, SSL termination is not available before v1.5.

Example:

3. No loophole in your website traffic #advanced
HTTP to HTTPS without a glitch

A good habit is to enforce HTTPS traffic so that no unencrypted traffic is possible. Configure HAproxy to automatically redirect HTTP traffic to HTTPS.

Requirements:

This should be transparent to the user
HAproxy should return a 301
HAproxy should redirect HTTP traffic to HTTPS
Share your HAproxy config as an answer file (/etc/haproxy/haproxy.cfg)
