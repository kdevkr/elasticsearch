# Elasticsearch

- [Elastic 가이드 북](https://esbook.kimjmin.net/)⭐️  
- [Elasticsearch 7.x Cheatsheet](http://elasticsearch-cheatsheet.jolicode.com/) 🔍  

## Run As

```sh
docker-compose up -d
```
## Data Import

`Kibana > Management > Integrations > Upload Files`

Import data from access.csv

## Troubleshooting

### Docker Desktop WSL 2
```sh
wsl -d docker-desktop
sysctl -w vm.max_map_count=262144
```