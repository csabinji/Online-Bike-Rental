# Generated by Django 3.0.2 on 2020-02-09 12:30

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('bike', '0002_auto_20200209_1815'),
    ]

    operations = [
        migrations.AlterField(
            model_name='bike',
            name='bikenum',
            field=models.CharField(max_length=50),
        ),
        migrations.AlterField(
            model_name='bike',
            name='priceperday',
            field=models.CharField(max_length=50),
        ),
    ]
