# influx-and-grafana

## Requirements

You have to install docker and docker-compose. On Mac it is shipped with docker package, on Linux use https://docs.docker.com/compose/install/

## Usage

### Docker

To start grafana and influx containers execute command

    docker-compose up

If you want it to run in background and "-d" flag

### Grafana 

Grafana web interface is available at http://localhost:3000/ (default credentials: admin/admin).
Create new datasource:
![Grafana data source](docs/screenshots/grafana-data-source.png?raw=true =100x)

In examples directory you'll find grafana-panel.json, you can use it to quickly create first dashboard:
![Grafana dashboard import](docs/screenshots/grafana-dashboard-import.png?raw=true =100x)


### Influx

Influx api is available at http://localhost:8086
To generate measurements use script "add-demo-data.sh" from examples directory. After you run this script data point will be visible on grafana dashboard
