# Prerequisite

1. Download and install [Docker](https://docs.docker.com/get-docker/) onto your system.

# Setup Guide

## 1. Start Docker-Compose
Navigate to the root folder and follow these steps:
<pre>
1. Duplicate and rename <i>./nginx/default.conf.example</i> to <i>./nginx/default.conf</i>
2. Open <i>./nginx/default.conf</i> and update <i>yourdomain.com</i> with your actual domain

3. Duplicate and rename <i>./frontend/.env.example</i> to <i>./frontend/.env</i>

4. In a terminal, run the following command
   <i>docker-compose up -d</i>

   Wait for docker-compose to do its thing...
</pre>


## 2. Attach a Shell to the Nginx Container
If you have VS Code, with the Docker extension installed:

<pre>
1. Navigate to the Docker Tab on the Sidebar
2. Right-click the `nginx` container
3. Select `Attach Shell` from the context menu
</pre>

Otherwise, in a terminal:

<pre>
1. Run the following command and make note of the starting characters on nginx's CONTAINER_ID:
   <i>docker ps</i>

   E.g.
   CONTAINER_ID
   <b>55</b>e9f7c80d32

2. Run the following command, using the starting characters found from above:
   <i>docker exec -it <b>55</b> sh</i>
</pre>

## 3. Configure Nginx for SSL via Certbot

<pre>
1. Run the following command in the shell, and follow the prompts to the end:
   <i>certbot</i>
</pre>

## 4. Navigate to your website
<pre>
1. Visit your website in a web browser and notice the secure connection 
</pre>

Finished! 🎉