# Generated by Django 3.0.2 on 2020-02-10 09:38

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('bike', '0005_auto_20200209_1846'),
    ]

    operations = [
        migrations.CreateModel(
            name='Booking',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('fromdate', models.CharField(max_length=50)),
                ('todate', models.CharField(max_length=50)),
                ('message', models.CharField(max_length=500)),
            ],
        ),
    ]
