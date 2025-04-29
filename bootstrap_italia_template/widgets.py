from django.forms.widgets import *
from django.utils.translation import gettext as _


class BootstrapItaliaDateWidget(DateInput):
    template_name = 'widgets/date.html'
    def __init__(self,  *attrs, **kwargs):
        super().__init__(*attrs, **kwargs)
        self.format = '%Y-%m-%d'


class BootstrapItaliaRadioWidget(RadioSelect):
    template_name = 'widgets/radio.html'


class BootstrapItaliaSelectWidget(Select):
    template_name = 'widgets/select.html'

    def __init__(self,  *attrs, **kwargs):
        super().__init__(*attrs, **kwargs)
        self.attrs = {'data-live-search': 'true',
                      'data-live-search-placeholder': _("Cerca...")}


class BootstrapItaliaSelectMultipleWidget(SelectMultiple,
                                          BootstrapItaliaSelectWidget):

    def __init__(self,  *attrs, **kwargs):
        super().__init__(*attrs, **kwargs)
        self.attrs['data-multiple-separator'] = ' - '
