# Generated by Django 3.0.2 on 2020-02-15 04:59

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('bike', '0012_bike_user'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='bike',
            name='user',
        ),
        migrations.RemoveField(
            model_name='book',
            name='user_id',
        ),
    ]
