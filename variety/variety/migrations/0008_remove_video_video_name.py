# Generated by Django 3.0.4 on 2021-04-19 08:35

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('variety', '0007_auto_20210419_1630'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='video',
            name='video_name',
        ),
    ]
