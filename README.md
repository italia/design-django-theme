[![Join the #design-cms-themes channel](https://img.shields.io/badge/Slack%20channel-%23design--cms--themes-blue.svg?logo=slack)](https://developersitalia.slack.com/messages/C91K0K085)
[![Get invited](https://slack.developers.italia.it/badge.svg)](https://slack.developers.italia.it/)
[![Design on forum.italia.it](https://img.shields.io/badge/Forum-Design-blue.svg)](https://forum.italia.it/c/design/user-interface)
[![Downloads](https://pepy.tech/badge/design-django-theme)](https://pepy.tech/project/design-django-theme)

Bootstrap Italia template for Django
-----------------------------------------

Completamente open-source, costruita sulle fondamenta di [Bootstrap Italia v1.6.2](https://italia.github.io/bootstrap-italia/),
di cui eredita tutte le funzionalità, componenti, griglie e classi di utilità,
secondo le [Linee Guida di Design per i siti web della Pubblica Amministrazione](https://docs.italia.it/italia/designers-italia/design-linee-guida-docs/it/stabile/).
**Bootstrap Italia** usa i pattern e i componenti definiti nello [UI Kit](https://designers.italia.it/kit/ui-kit/)
di Designers Italia e li trasforma in codice già pronto all'uso.

Questa libreria per il framework Python Django fornisce lo schema di default
del template, opportunamente diviso in blocchi di cui poter fare l'overload,
al fine di dotare il proprio progetto di una interfaccia grafica che rispetti
le Linee guida di design per i servizi web della Pubblica Amministrazione.

[QUI](https://italia.github.io/bootstrap-italia/docs/come-iniziare/introduzione/)
è possibile prendere visione del codice sorgente per l'implementazione di tutti
i componenti grafici messi a disposizione.

Installazione
-------------

```
pip install design-django-theme
```
- In settings.py INSTALLED_APPS inserire *bootstrap_italia_template*.


Utilizzo
--------

```
python manage.py collectstatic
```

- Nel template del progetto, creare un file ```base.html``` (scegliere il nome
preferito) ed eseguire l'*extends* del file ```bootstrap-italia-base.html```. Questa
sarà la base grafica (il file è concepito quasi come un file di configurazione),
comune a tutte (o quasi) le pagine del sistema;
- In ```base.html``` eseguire l'overload dei blocchi, al fine di personalizzare
le sezioni di interesse (es. il nome dell'Ente/Organizzazione, il logo, ecc...);
- Ogni pagina del proprio progetto dovrà estendere ```base.html``` ed effettuare
l'overload del blocco ```{% container %}```, ereditando, cosi, le impostazioni
di ```<header>``` e  ```<footer>``` opportunamente personalizzate.

Formato data nel datepicker
---------------------------

Per personalizzare il formato della data utilizzato nel widget datepicker (calendario)
dei form, effettuare l'override del parametro ```JS_DEFAULT_DATE_FORMAT``` nel
file ```settings``` del progetto.
Il valore di default è "dd/MM/yyyy".

Stile e CSS/SCSS
----------------

Per la personalizzazione dello stile del template (colori, dimensioni, sfondi),
si consiglia l'utilizzo di SASS 3 (Syntactically Awesome Style Sheets), in modo
da essere in grado di agire in ambito responsive.

Può essere utile [django-sass-processor](https://pypi.org/project/django-sass-processor).

Una volta installate le librerie, sarà possibile integrare fogli di stile *.scss*
e importarli nelle proprie pagine effettuando l'overload del blocco ```{% extra_head %}```.

CDN vs local
------------

E' possibile recuperare i file statici (css, js, svg) da una CDN.
Nel ```settings.py``` del proprio progetto basta customizzare i seguenti parametri:

- ```DJANGO_BOOSTRAP_ITALIA_USE_CDN``` (default **False**);
- ```DJANGO_BOOSTRAP_ITALIA_CDN``` (default **https://cdn.jsdelivr.net/npm/bootstrap-italia@1.6.2/dist**);

Descrizione dei blocchi
-----------------------

I blocchi sono elencati in ordine di "apparizione" nel file ```bootstrap-italia-base.html```.

| Block                                 | Descrizione           |
| --------------------------------------|---------------------|
| **{% block page_title %}**            | Tag <title> della pagina   |
| **{% block page_meta_description %}** | tag <meta-description> della pagina   |
| **{% block page_meta_keywords %}**    | tag <meta-keywords> della pagina   |
| **{% block page_meta_robots %}**    | tag <meta-robots> della pagina   |
| **{% block extra_head %}** | Extra CSS o Javascript   |
| **{% block header_wrapper %}** | Intero blocco Header   |
| **{% block header_slim_wrapper %}** | Striscia top in Header   |
| **{% block header_center_wrapper_columns %}** | Classe per definizione colonne in griglia in "it-header-center-wrapper"   |
| **{% block header_slim_top_left %}** | Striscia top left che avvolge header_slim_org_name  |
| **{% block header_slim_org_name %}** | Nome organizzazione in Header top   |
| **{% block header_slim_mobile_org_name %}** | Nome organizzazione in Header top (mobile)   |
| **{% block header_mobile_arrow %}** | Icona freccia sub-menu in Header top (mobile)   |
| **{% block header_mobile_slim_menu %}** | Sub-menu nome organizzazione (mobile)   |
| **{% block header_slim_right_zone %}** | Area di destra in Header top   |
| **{% block header_slim_sub_menu %}** | Sub-menu area di destra in Header top   |
| **{% block header_slim_buttons %}** | Button area di destra in Header top   |
| **{% block header_brand_wrapper %}** | Wrapper div del logo   |
| **{% block header_brand_text %}** | Wrapper div del testo del logo   |
| **{% block header_center_logo %}** | Header logo principale  |
| **{% block header_center_org_name %}** | Nome organizzazione principale in Header   |
| **{% block header_center_org_subname %}** | Descrizione organizzazione in Header   |
| **{% block header_center_right_zone %}** | Area di destra sezione principale Header  |
| **{% block header_center_social %}** | Area icone social in sezione principale Header   |
| **{% block header_center_search %}** | Area "Cerca" in sezione principale Header   |
| **{% block header_center_search_text %}** | Area di testo in "Cerca"  |
| **{% block header_center_search_word %}** | Testo "Cerca"   |
| **{% block header_center_search_icon %}** | Icona tasto "Cerca"   |
| **{% block main_menu %}** | Menu principale in Header  |
| **{% block menu_links %}** | Voci del menu principale |
| **{% block messages %}** | Messaggi di sistema   |
| **{% block centered_messages %}** | Messaggi di sistema, centrati, con margin e padding settati   |
| **{% block container %}** | Contenuto della pagina, senza padding e margin   |
| **{% block centered_container %}** | Contenuto della pagina, centrato, con margin e padding settati   |
| **{% block footer %}** | Area footer   |
| **{% block footer_top_section %}** | Striscia top in Footer   |
| **{% block footer_logo %}** | Logo Footer  |
| **{% block footer_org_text %}** | Area nome organizzazione in Footer   |
| **{% block footer_org_name %}** | Nome organizzazione in Footer   |
| **{% block footer_org_subname %}** | Descrizione organizzazione in Footer   |
| **{% block footer_menu_section %}** | Sezione menu centrali in Footer   |
| **{% block first_column %}** | Prima colonna in sezione centrale in Footer   |
| **{% block second_column %}** | Seconda colonna in sezione centrale in Footer   |
| **{% block third_column %}** | Terza colonna in sezione centrale in Footer   |
| **{% block fourth_column %}** | Quarta colonna in sezione centrale in Footer   |
| **{% block footer_contacts_section %}** | Sezione contatti in Footer   |
| **{% block footer_bottom %}** | Striscia bottom in Footer   |
| **{% block footer_bottom_content %}** | Contenuto striscia bottom in Footer   |
| **{% block bottom_scripts %}** | Javascripts   |
| **{% block extra_scripts %}** | Javascript aggiuntivi a fine pagina   |


Esempio di base.html
--------------------

```
<!-- Extends default Bootstrap Italia template -->
{% extends 'bootstrap-italia-base.html' %}

<!-- From app django-sass-processor -->
{% load sass_tags %}

{% load static %}

<!-- Page Title -->
{% block page_title %}
Università della Calabria
{% endblock page_title %}

<!-- My custom scss sheet -->
{% block extra_head %}
<link rel="stylesheet" href="{% sass_src 'css/unical-style.scss' %}" type="text/css" />
{% endblock extra_head %}

<!-- URL link top left -->
{% block header_slim_org_url %}
https://www.unical.it
{% endblock header_slim_org_url %}

<!-- Name top left -->
{% block header_slim_org_name %}
Università della Calabria
{% endblock header_slim_org_name %}

<!-- Mobile slim_org_name -->
{% block header_slim_mobile_org_name %}
Università della Calabria
{% endblock header_slim_mobile_org_name %}

<!-- Make empty areas -->
{% block header_mobile_arrow %}{% endblock header_mobile_arrow %}
{% block header_mobile_slim_menu %}{% endblock header_mobile_slim_menu %}

<!-- Logo in Header -->
{% block header_center_logo %}
<img class="icon" src="{% static 'images/logo.png' %}" />
{% endblock header_center_logo %}

<!-- Organization name in Header -->
{% block header_center_org_name %}
Università della Calabria
{% endblock header_center_org_name %}

<!-- Organization description in Header -->
{% block header_center_org_subname %}
Il Campus per eccellenza
{% endblock header_center_org_subname %}

<!-- Logo in Footer -->
{% block footer_logo %}
<img class="icon" src="{% static 'images/logo_white.png' %}" />
{% endblock footer_logo %}

<!-- Organization name in Footer -->
{% block footer_org_name %}
Università della Calabria
{% endblock footer_org_name %}

<!-- Organization name in Footer -->
{% block footer_org_subname %}
Il Campus per eccellenza
{% endblock footer_org_subname %}
```

Widget per i form fields di Django
-----------------------------------

Definiti i [Django widgets](https://docs.djangoproject.com/en/2.2/ref/forms/widgets/)
per l'adeguamento grafico dei form alle linee guida di **Boostrap Italia**.

![Radio Box](data/gallery/widget_radio.png)
_Radio box field_

![Select Box](data/gallery/widget_select.png)
_Select box field_

![Date Field](data/gallery/widget_date.png)
_Date field_

Per l'utilizzo dei [Django Formset](https://docs.djangoproject.com/en/2.2/topics/forms/formsets/)
si consiglia l'utilizzo nel proprio progetto della libreria
[django-form-builder](https://github.com/UniversitaDellaCalabria/django-form-builder.git)
dell'[Università della Calabria](https://github.com/UniversitaDellaCalabria).

Viene fornito a tale scopo un widget ad-hoc.

![Formset Field](data/gallery/widget_formset.png)
_Formset field_


Galleria
--------

![Home](data/gallery/default.png)
_**Frontend**: Schermata di default del template_
