# Generated by Django 3.0.4 on 2021-04-19 03:14

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('variety', '0003_auto_20210419_1036'),
    ]

    operations = [
        migrations.AlterField(
            model_name='slide',
            name='desc',
            field=models.CharField(max_length=100, verbose_name='描述'),
        ),
        migrations.AlterField(
            model_name='slide',
            name='title',
            field=models.CharField(max_length=100, verbose_name='名称'),
        ),
    ]
