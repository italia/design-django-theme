from django.forms.widgets import *


class BootstrapItaliaDateWidget(DateInput):
    template_name = 'widgets/date.html'

    def __init__(self,  *attrs, **kwargs):
        super().__init__( *attrs, **kwargs)


class BootstrapItaliaRadioWidget(RadioSelect):
    template_name = 'widgets/radio.html'

    def __init__(self,  *attrs, **kwargs):
        super().__init__(*attrs, **kwargs)


class BootstrapItaliaSelectWidget(Select):
    template_name = 'widgets/select.html'

    def __init__(self,  *attrs, **kwargs):
        super().__init__(*attrs, **kwargs)
