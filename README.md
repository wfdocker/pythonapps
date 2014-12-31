# PythonApps

Simple container to install my Python apps.


## Run

<pre>
docker run --restart=always -v /apps/database/<nameofapp>.sql3:/db.sql3 -v /apps/<nameofapp>/src:/app --env SERVERLEVEL=<env> -p :<port>:5000 --name <nameofapp> -d pythonapps
</pre>

