echo "make stop"
make stop

echo "Delete media"
rm -rf core/media

echo "Delete db"
rm -rf ../scms_data

# echo "Delete migrations"
rm */migrations/0*.py

# echo "Restaura django celery beat"
cp -r ~/github.com/django-celery-beat/django_celery_beat .

# echo "Cria migracoes"
make django_makemigrations

echo "Migra"
make django_migrate

echo "make up"
make up

make django_createsuperuser
echo
echo make django_bash
echo

cat ../commands.txt
