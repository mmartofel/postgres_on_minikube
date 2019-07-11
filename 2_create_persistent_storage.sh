echo ''
echo '------------------------------------------------------------------------------------------'
echo ''
echo 'Creating PersistentVolume resource for PostgreSQL'
echo ''
echo 'Please be aware the following parameter has being fixed at postgres-storage.yaml file:'
echo ''
echo '  hostPath:'
echo '    path: "/mnt/sda1/postgres_data" '
echo ''
echo '------------------------------------------------------------------------------------------'
echo ''

kubectl create -f postgres-storage.yaml
