# Generated by Django 3.0.2 on 2020-02-09 12:30

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('bike', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='bike',
            name='bikenum',
            field=models.CharField(max_length=500),
        ),
        migrations.AlterField(
            model_name='bike',
            name='priceperday',
            field=models.CharField(max_length=500),
        ),
    ]
