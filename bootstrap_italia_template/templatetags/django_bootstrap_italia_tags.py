from django import template
from django.conf import settings

from bootstrap_italia_template import settings


register = template.Library()


@register.simple_tag
def default_js_date_value():
    return getattr(settings, "JS_DEFAULT_DATE_FORMAT", settings.JS_DEFAULT_DATE_FORMAT)
