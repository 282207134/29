# Generated by Django 3.0.14 on 2021-05-08 02:14

import django.core.validators
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('spirit_user', '0013_auto_20210507_1244'),
    ]

    operations = [
        migrations.AlterField(
            model_name='userprofile',
            name='avatar',
            field=models.ImageField(blank=True, null=True, upload_to='avatar/%Y%m%d/', validators=[django.core.validators.FileExtensionValidator(['jpg', 'png'])]),
        ),
    ]
