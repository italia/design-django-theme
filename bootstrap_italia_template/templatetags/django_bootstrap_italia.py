from django import template
from django.conf import settings
from django.templatetags.static import static

from .. settings import *


register = template.Library()

DJANGO_BOOTSTRAP_ITALIA_USE_CDN = getattr(settings, 'DJANGO_BOOTSTRAP_ITALIA_USE_CDN', DJANGO_BOOTSTRAP_ITALIA_USE_CDN)
DJANGO_BOOTSTRAP_ITALIA_CDN = getattr(settings, 'DJANGO_BOOTSTRAP_ITALIA_CDN', DJANGO_BOOTSTRAP_ITALIA_CDN)


@register.simple_tag
def django_bootstrap_italia_static_path(resource):
    if not resource: return ''
    if DJANGO_BOOTSTRAP_ITALIA_USE_CDN:
        return f'{DJANGO_BOOTSTRAP_ITALIA_CDN}/{resource}'
    return static(resource)
