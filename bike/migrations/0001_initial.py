# Generated by Django 3.0.2 on 2020-02-09 12:27

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Bike',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('vehicletitle', models.CharField(max_length=50)),
                ('Brand', models.CharField(max_length=50)),
                ('vehicalorcview', models.CharField(max_length=500)),
                ('priceperday', models.FloatField()),
                ('bikenum', models.FloatField()),
                ('img1', models.CharField(max_length=50)),
                ('img2', models.CharField(max_length=50)),
                ('img3', models.CharField(max_length=50)),
            ],
        ),
    ]
