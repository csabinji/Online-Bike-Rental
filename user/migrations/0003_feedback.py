# Generated by Django 3.0.2 on 2020-02-11 05:38

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('user', '0002_user'),
    ]

    operations = [
        migrations.CreateModel(
            name='Feedback',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('fullname', models.CharField(max_length=50)),
                ('mobileno', models.FloatField()),
                ('emailid', models.CharField(max_length=50)),
                ('message', models.CharField(max_length=500)),
            ],
        ),
    ]
