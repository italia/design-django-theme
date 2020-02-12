[33mcommit f7a2ec27e9b25010970feed7fa37274e28c17547[m[33m ([m[1;36mHEAD -> [m[1;32mmaster[m[33m)[m
Author: Francesco Filicetti <francesco.filicetti@unical.it>
Date:   Mon Dec 9 14:24:24 2019 +0100

    delete error 500 page

[1mdiff --git a/bootstrap_italia_template/templates/500.html b/bootstrap_italia_template/templates/500.html[m
[1mdeleted file mode 100644[m
[1mindex ffa9b27..0000000[m
[1m--- a/bootstrap_italia_template/templates/500.html[m
[1m+++ /dev/null[m
[36m@@ -1,546 +0,0 @@[m
[31m-<!DOCTYPE html>[m
[31m-<html lang="it">[m
[31m-    <head>[m
[31m-        <meta http-equiv="content-type" content="text/html; charset=UTF-8">[m
[31m-        <!-- Required meta tags -->[m
[31m-        <meta charset="utf-8">[m
[31m-        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">[m
[31m-        <!-- Page details -->[m
[31m-        <title>Errore</title>[m
[31m-        <meta name="description" content="Bootstrap Italia">[m
[31m-        <!-- CSS -->[m
[31m-        <link rel="stylesheet" href="/static/css/bootstrap-italia.min.css">[m
[31m-        <style>[m
[31m-            /* Titillium+Web:300,400,600,700 */[m
[31m-[m
[31m-            /* latin-ext */[m
[31m-            @font-face {[m
[31m-              font-family: 'Titillium Web';[m
[31m-              font-style: normal;[m
[31m-              font-weight: 300;[m
[31m-              src: local('Titillium Web Light'), local('TitilliumWeb-Light'),[m
[31m-              url(/static/fonts/Titillium_Web/TitilliumWeb-Light.woff2) format('woff2'),[m
[31m-              url(/static/fonts/Titillium_Web/TitilliumWeb-Light.woff) format('woff'),[m
[31m-              url(/static/fonts/Titillium_Web/TitilliumWeb-Light.ttf) format('truetype');[m
[31m-              unicode-range: U+0100-024F, U+0259, U+1E00-1EFF, U+2020, U+20A0-20AB, U+20AD-20CF, U+2113, U+2C60-2C7F, U+A720-A7FF;[m
[31m-            }[m
[31m-            /* latin */[m
[31m-            @font-face {[m
[31m-              font-family: 'Titillium Web';[m
[31m-              font-style: normal;[m
[31m-              font-weight: 300;[m
[31m-              src: local('Titillium Web Light'), local('TitilliumWeb-Light'),[m
[31m-              url(/static/fonts/Titillium_Web/TitilliumWeb-Light.woff2) format('woff2'),[m
[31m-              url(/static/fonts/Titillium_Web/TitilliumWeb-Light.woff) format('woff'),[m
[31m-              url(/static/fonts/Titillium_Web/TitilliumWeb-Light.ttf) format('truetype');[m
[31m-              unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6, U+02DA, U+02DC, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193, U+2212, U+2215, U+FEFF, U+FFFD;[m
[31m-            }[m
[31m-            /* latin-ext */[m
[31m-            @font-face {[m
[31m-              font-family: 'Titillium Web';[m
[31m-              font-style: normal;[m
[31m-              font-weight: 400;[m
[31m-              src: local('Titillium Web Regular'), local('TitilliumWeb-Regular'),[m
[31m-              url(/static/fonts/Titillium_Web/TitilliumWeb-Regular.woff2) format('woff2'),[m
[31m-              url(/static/fonts/Titillium_Web/TitilliumWeb-Regular.woff) format('woff'),[m
[31m-              url(/static/fonts/Titillium_Web/TitilliumWeb-Regular.ttf) format('truetype');[m
[31m-              unicode-range: U+0100-024F, U+0259, U+1E00-1EFF, U+2020, U+20A0-20AB, U+20AD-20CF, U+2113, U+2C60-2C7F, U+A720-A7FF;[m
[31m-            }[m
[31m-            /* latin */[m
[31m-            @font-face {[m
[31m-              font-family: 'Titillium Web';[m
[31m-              font-style: normal;[m
[31m-              font-weight: 400;[m
[31m-              src: local('Titillium Web Regular'), local('TitilliumWeb-Regular'),[m
[31m-              url(/static/fonts/Titillium_Web/TitilliumWeb-Regular.woff2) format('woff2'),[m
[31m-              url(/static/fonts/Titillium_Web/TitilliumWeb-Regular.woff) format('woff'),[m
[31m-              url(/static/fonts/Titillium_Web/TitilliumWeb-Regular.ttf) format('truetype');[m
[31m-              unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6, U+02DA, U+02DC, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193, U+2212, U+2215, U+FEFF, U+FFFD;[m
[31m-            }[m
[31m-            /* latin-ext */[m
[31m-            @font-face {[m
[31m-              font-family: 'Titillium Web';[m
[31m-              font-style: normal;[m
[31m-              font-weight: 600;[m
[31m-              src: local('Titillium Web SemiBold'), local('TitilliumWeb-SemiBold'),[m
[31m-              url(/static/fonts/Titillium_Web/TitilliumWeb-SemiBold.woff2) format('woff2'),[m
[31m-              url(/static/fonts/Titillium_Web/TitilliumWeb-SemiBold.woff) format('woff'),[m
[31m-              url(/static/fonts/Titillium_Web/TitilliumWeb-SemiBold.ttf) format('truetype');[m
[31m-              unicode-range: U+0100-024F, U+0259, U+1E00-1EFF, U+2020, U+20A0-20AB, U+20AD-20CF, U+2113, U+2C60-2C7F, U+A720-A7FF;[m
[31m-            }[m
[31m-            /* latin */[m
[31m-            @font-face {[m
[31m-              font-family: 'Titillium Web';[m
[31m-              font-style: normal;[m
[31m-              font-weight: 600;[m
[31m-              src: local('Titillium Web SemiBold'), local('TitilliumWeb-SemiBold'),[m
[31m-              url(/static/fonts/Titillium_Web/TitilliumWeb-SemiBold.woff2) format('woff2'),[m
[31m-              url(/static/fonts/Titillium_Web/TitilliumWeb-SemiBold.woff) format('woff'),[m
[31m-              url(/static/fonts/Titillium_Web/TitilliumWeb-SemiBold.ttf) format('truetype');[m
[31m-              unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6, U+02DA, U+02DC, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193, U+2212, U+2215, U+FEFF, U+FFFD;[m
[31m-            }[m
[31m-            /* latin-ext */[m
[31m-            @font-face {[m
[31m-              font-family: 'Titillium Web';[m
[31m-              font-style: normal;[m
[31m-              font-weight: 700;[m
[31m-              src: local('Titillium Web Bold'), local('TitilliumWeb-Bold'),[m
[31m-              url(/static/fonts/Titillium_Web/TitilliumWeb-Bold.woff2) format('woff2'),[m
[31m-              url(/static/fonts/Titillium_Web/TitilliumWeb-Bold.woff) format('woff'),[m
[31m-              url(/static/fonts/Titillium_Web/TitilliumWeb-Bold.ttf) format('truetype');[m
[31m-              unicode-range: U+0100-024F, U+0259, U+1E00-1EFF, U+2020, U+20A0-20AB, U+20AD-20CF, U+2113, U+2C60-2C7F, U+A720-A7FF;[m
[31m-            }[m
[31m-            /* latin */[m
[31m-            @font-face {[m
[31m-              font-family: 'Titillium Web';[m
[31m-              font-style: normal;[m
[31m-              font-weight: 700;[m
[31m-              src: local('Titillium Web Bold'), local('TitilliumWeb-Bold'),[m
[31m-              url(/static/fonts/Titillium_Web/TitilliumWeb-Bold.woff2) format('woff2'),[m
[31m-              url(/static/fonts/Titillium_Web/TitilliumWeb-Bold.woff) format('woff'),[m
[31m-              url(/static/fonts/Titillium_Web/TitilliumWeb-Bold.ttf) format('truetype');[m
[31m-              unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6, U+02DA, U+02DC, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193, U+2212, U+2215, U+FEFF, U+FFFD;[m
[31m-            }[m
[31m-[m
[31m-            /* Lora:400,700 */[m
[31m-[m
[31m-            /* latin-ext */[m
[31m-            @font-face {[m
[31m-              font-family: 'Lora';[m
[31m-              font-style: normal;[m
[31m-              font-weight: 400;[m
[31m-              src: local('Lora Regular'), local('Lora-Regular'),[m
[31m-              url(/static/fonts/Lora/Lora-Regular.woff2) format('woff2'),[m
[31m-              url(/static/fonts/Lora/Lora-Regular.woff) format('woff'),[m
[31m-              url(/static/fonts/Lora/Lora-Regular.ttf) format('truetype');[m
[31m-              unicode-range: U+0100-024F, U+0259, U+1E00-1EFF, U+2020, U+20A0-20AB, U+20AD-20CF, U+2113, U+2C60-2C7F, U+A720-A7FF;[m
[31m-            }[m
[31m-            /* latin */[m
[31m-            @font-face {[m
[31m-              font-family: 'Lora';[m
[31m-              font-style: normal;[m
[31m-              font-weight: 400;[m
[31m-              src: local('Lora Regular'), local('Lora-Regular'),[m
[31m-              url(/static/fonts/Lora/Lora-Regular.woff2) format('woff2'),[m
[31m-              url(/static/fonts/Lora/Lora-Regular.woff) format('woff'),[m
[31m-              url(/static/fonts/Lora/Lora-Regular.ttf) format('truetype');[m
[31m-              unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6, U+02DA, U+02DC, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193, U+2212, U+2215, U+FEFF, U+FFFD;[m
[31m-            }[m
[31m-            /* latin-ext */[m
[31m-            @font-face {[m
[31m-              font-family: 'Lora';[m
[31m-              font-style: normal;[m
[31m-              font-weight: 700;[m
[31m-              src: local('Lora Bold'), local('Lora-Bold'),[m
[31m-              url(/static/fonts/Lora/Lora-Bold.woff2) format('woff2'),[m
[31m-              url(/static/fonts/Lora/Lora-Bold.woff) format('woff'),[m
[31m-              url(/static/fonts/Lora/Lora-Bold.ttf) format('truetype');[m
[31m-              unicode-range: U+0100-024F, U+0259, U+1E00-1EFF, U+2020, U+20A0-20AB, U+20AD-20CF, U+2113, U+2C60-2C7F, U+A720-A7FF;[m
[31m-            }[m
[31m-            /* latin */[m
[31m-            @font-face {[m
[31m-              font-family: 'Lora';[m
[31m-              font-style: normal;[m
[31m-              font-weight: 700;[m
[31m-              src: local('Lora Bold'), local('Lora-Bold'),[m
[31m-              url(/static/fonts/Lora/Lora-Bold.woff2) format('woff2'),[m
[31m-              url(/static/fonts/Lora/Lora-Bold.woff) format('woff'),[m
[31m-              url(/static/fonts/Lora/Lora-Bold.ttf) format('truetype');[m
[31m-              unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6, U+02DA, U+02DC, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193, U+2212, U+2215, U+FEFF, U+FFFD;[m
[31m-            }[m
[31m-[m
[31m-            /* Roboto+Mono:400,700 */[m
[31m-[m
[31m-            /* latin-ext */[m
[31m-            @font-face {[m
[31m-              font-family: 'Roboto Mono';[m
[31m-              font-style: normal;[m
[31m-              font-weight: 400;[m
[31m-              src: local('Roboto Mono'), local('RobotoMono-Regular'),[m
[31m-              url(/static/fonts/Roboto_Mono/RobotoMono-Regular.woff2) format('woff2'),[m
[31m-              url(/static/fonts/Roboto_Mono/RobotoMono-Regular.woff) format('woff'),[m
[31m-              url(/static/fonts/Roboto_Mono/RobotoMono-Regular.ttf) format('truetype');[m
[31m-              unicode-range: U+0100-024F, U+0259, U+1E00-1EFF, U+2020, U+20A0-20AB, U+20AD-20CF, U+2113, U+2C60-2C7F, U+A720-A7FF;[m
[31m-            }[m
[31m-            /* latin */[m
[31m-            @font-face {[m
[31m-              font-family: 'Roboto Mono';[m
[31m-              font-style: normal;[m
[31m-              font-weight: 400;[m
[31m-              src: local('Roboto Mono'), local('RobotoMono-Regular'),[m
[31m-              url(/static/fonts/Roboto_Mono/RobotoMono-Regular.woff2) format('woff2'),[m
[31m-              url(/static/fonts/Roboto_Mono/RobotoMono-Regular.woff) format('woff'),[m
[31m-              url(/static/fonts/Roboto_Mono/RobotoMono-Regular.ttf) format('truetype');[m
[31m-              unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6, U+02DA, U+02DC, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193, U+2212, U+2215, U+FEFF, U+FFFD;[m
[31m-            }[m
[31m-            /* latin-ext */[m
[31m-            @font-face {[m
[31m-              font-family: 'Roboto Mono';[m
[31m-              font-style: normal;[m
[31m-              font-weight: 700;[m
[31m-              src: local('Roboto Mono Bold'), local('RobotoMono-Bold'),[m
[31m-              url(/static/fonts/Roboto_Mono/RobotoMono-Bold.woff2) format('woff2'),[m
[31m-              url(/static/fonts/Roboto_Mono/RobotoMono-Bold.woff) format('woff'),[m
[31m-              url(/static/fonts/Roboto_Mono/RobotoMono-Bold.ttf) format('truetype');[m
[31m-              unicode-range: U+0100-024F, U+0259, U+1E00-1EFF, U+2020, U+20A0-20AB, U+20AD-20CF, U+2113, U+2C60-2C7F, U+A720-A7FF;[m
[31m-            }[m
[31m-            /* latin */[m
[31m-            @font-face {[m
[31m-              font-family: 'Roboto Mono';[m
[31m-              font-style: normal;[m
[31m-              font-weight: 700;[m
[31m-              src: local('Roboto Mono Bold'), local('RobotoMono-Bold'),[m
[31m-              url(/static/fonts/Roboto_Mono/RobotoMono-Bold.woff2) format('woff2'),[m
[31m-              url(/static/fonts/Roboto_Mono/RobotoMono-Bold.woff) format('woff'),[m
[31m-              url(/static/fonts/Roboto_Mono/RobotoMono-Bold.ttf) format('truetype');[m
[31m-              unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6, U+02DA, U+02DC, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193, U+2212, U+2215, U+FEFF, U+FFFD;[m
[31m-            }[m
[31m-        </style>[m
[31m-    </head>[m
[31m-    <body>[m
[31m-        <div class="it-header-wrapper">[m
[31m-            <div class="it-header-slim-wrapper">[m
[31m-                <div class="container">[m
[31m-                    <div class="row">[m
[31m-                        <div class="col-12">[m
[31m-                            <div class="it-header-slim-wrapper-content">[m
[31m-                                <a class="d-none d-lg-block navbar-brand" href="#">[m
[31m-                                    Nome Ente/Organizzazione[m
[31m-                                </a>[m
[31m-                                <div class="nav-mobile">[m
[31m-                                    <nav>[m
[31m-                                        <a class="it-opener d-lg-none" data-toggle="collapse" href="#menu-principale" role="button" aria-expanded="false" aria-controls="menu-principale">[m
[31m-                                            <span>[m
[31m-                                                Nome Ente/Organizzazione[m
[31m-                                            </span>[m
[31m-[m
[31m-                                        </a>[m
[31m-[m
[31m-                                    </nav>[m
[31m-                                </div>[m
[31m-[m
[31m-                                <div class="header-slim-right-zone">[m
[31m-                                    <div class="nav-item dropdown">[m
[31m-                                        <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" aria-expanded="false">[m
[31m-                                            <span>ITA</span>[m
[31m-                                            <svg class="icon d-none d-lg-block">[m
[31m-                                                <use xlink:href="/static/svg/sprite.svg#it-expand"></use>[m
[31m-                                            </svg>[m
[31m-                                        </a>[m
[31m-                                        <div class="dropdown-menu" x-placement="bottom-start" style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 46px, 0px);">[m
[31m-                                            <div class="row">[m
[31m-                                                <div class="col-12">[m
[31m-                                                    <div class="link-list-wrapper">[m
[31m-                                                        <ul class="link-list">[m
[31m-                                                            <li><a class="list-item" href="#"><span>ITA</span></a></li>[m
[31m-                                                            <li><a class="list-item" href="#"><span>ENG</span></a></li>[m
[31m-                                                        </ul>[m
[31m-                                                    </div>[m
[31m-                                                </div>[m
[31m-                                            </div>[m
[31m-                                        </div>[m
[31m-                                    </div>[m
[31m-                                    <div class="it-access-top-wrapper">[m
[31m-                                        <button class="btn btn-primary btn-sm" onclick="#" type="button">Accedi</button>[m
[31m-                                    </div>[m
[31m-                                </div>[m
[31m-                            </div>[m
[31m-                        </div>[m
[31m-                    </div>[m
[31m-                </div>[m
[31m-            </div>[m
[31m-[m
[31m-            <div class="it-nav-wrapper">[m
[31m-                <div class="it-header-center-wrapper">[m
[31m-                    <div class="container">[m
[31m-                        <div class="row">[m
[31m-                            <div class="col-12">[m
[31m-                                <div class="it-header-center-content-wrapper">[m
[31m-                                    <div class="it-brand-wrapper">[m
[31m-                                        <a href="#">[m
[31m-                                            <svg class="icon">[m
[31m-                                                <use xlink:href="{% static '/static/svg/sprite.svg' %}#it-code-circle"></use>[m
[31m-                                            </svg>[m
[31m-[m
[31m-                                            <div class="it-brand-text">[m
[31m-                                                <h2 class="no_toc">[m
[31m-                                                    Nome Organizzazione[m
[31m-                                                </h2>[m
[31m-                                                <h3 class="no_toc d-none d-md-block">[m
[31m-                                                    Sottotitolo Organizzazione[m
[31m-                                                </h3>[m
[31m-                                            </div>[m
[31m-                                        </a>[m
[31m-                                    </div>[m
[31m-                                    <div class="it-right-zone">[m
[31m-[m
[31m-                                        <div class="it-socials d-none d-md-flex">[m
[31m-                                            <span>Seguici su</span>[m
[31m-                                            <ul>[m
[31m-                                                <li>[m
[31m-                                                    <a href="#" aria-label="Facebook" target="_blank">[m
[31m-                                                        <svg class="icon">[m
[31m-                                                            <use xlink:href="/static/svg/sprite.svg#it-facebook"></use>[m
[31m-                                                        </svg>[m
[31m-                                                    </a>[m
[31m-                                                </li>[m
[31m-                                                <li>[m
[31m-                                                    <a href="#" aria-label="Twitter" target="_blank">[m
[31m-                                                        <svg class="icon">[m
[31m-                                                            <use xlink:href="/static/svg/sprite.svg#it-twitter"></use>[m
[31m-                                                        </svg>[m
[31m-                                                    </a>[m
[31m-                                                </li>[m
[31m-                                                <li>[m
[31m-                                                    <a href="#" target="_blank" aria-label="Instagram">[m
[31m-                                                        <svg class="icon">[m
[31m-                                                            <use xlink:href="/static/svg/sprite.svg#it-instagram"></use>[m
[31m-                                                        </svg>[m
[31m-                                                    </a>[m
[31m-                                                </li>[m
[31m-                                                <li>[m
[31m-                                                    <a href="#" target="_blank" aria-label="YouTube">[m
[31m-                                                        <svg class="icon">[m
[31m-                                                            <use xlink:href="/static/svg/sprite.svg#it-youtube"></use>[m
[31m-                                                        </svg>[m
[31m-                                                    </a>[m
[31m-                                                </li>[m
[31m-                                            </ul>[m
[31m-                                        </div>[m
[31m-                                    </div>[m
[31m-                                </div>[m
[31m-                            </div>[m
[31m-                        </div>[m
[31m-                    </div>[m
[31m-                </div>[m
[31m-[m
[31m-                <!-- Main menu -->[m
[31m-[m
[31m-                <div class="it-header-navbar-wrapper">[m
[31m-                    <div class="container">[m
[31m-                        <div class="row">[m
[31m-                            <div class="col-12">[m
[31m-                                <nav class="navbar navbar-expand-lg has-megamenu">[m
[31m-                                    <button class="custom-navbar-toggler" type="button" aria-controls="nav10" aria-expanded="false" aria-label="Toggle navigation" data-target="#nav10">[m
[31m-                                        <svg class="icon">[m
[31m-                                            <use xlink:href="/static/images/svg/sprite.svg#it-burger"></use>[m
[31m-                                        </svg>[m
[31m-                                    </button>[m
[31m-                                    <div class="navbar-collapsable" id="nav10">[m
[31m-                                        <div class="overlay"></div>[m
[31m-                                        <div class="close-div sr-only">[m
[31m-                                            <button class="btn close-menu" type="button"><span class="it-close"></span>close</button>[m
[31m-                                        </div>[m
[31m-                                        <div class="menu-wrapper">[m
[31m-                                            <ul class="navbar-nav">[m
[31m-                                                <li class="nav-item active">[m
[31m-                                                    <a class="nav-link active" href="#">[m
[31m-                                                        <span>Pagina di Errore</span>[m
[31m-                                                        <span class="sr-only">current</span>[m
[31m-                                                    </a>[m
[31m-                                                </li>[m
[31m-                                            </ul>[m
[31m-                                        </div>[m
[31m-                                    </div>[m
[31m-                                </nav>[m
[31m-                            </div>[m
[31m-                        </div>[m
[31m-                    </div>[m
[31m-                </div>[m
[31m-            </div>[m
[31m-        </div>[m
[31m-[m
[31m-        <!-- Container - Body of page-->[m
[31m-        <div class="main-body">[m
[31m-            <div class="container">[m
[31m-                <div class="col-12 py-md-5 bd-content">[m
[31m-                    <h4 class="">Errore</h4>[m
[31m-                    <p class="mb-lg-5 mb-2">[m
[31m-                        Messaggio errore[m
[31m-                    </p>[m
[31m-                </div>[m
[31m-            </div>[m
[31m-[m
[31m-        </div>[m
[31m-[m
[31m-        <!-- Footer -->[m
[31m-[m
[31m-        <footer class="it-footer">[m
[31m-            <div class="it-footer-main">[m
[31m-                <div class="container">[m
[31m-                    <section>[m
[31m-                        <div class="row clearfix">[m
[31m-                            <div class="col-sm-12">[m
[31m-                                <div class="it-brand-wrapper">[m
[31m-                                    <a href="{% block footer_logo_url %}#{% endblock footer_logo_url %}">[m
[31m-                                        <svg class="icon">[m
[31m-                                            <use xlink:href="/static/svg/sprite.svg' %}#it-code-circle"></use>[m
[31m-                                        </svg>[m
[31m-                                        <div class="it-brand-text">[m
[31m-                                            <h2 class="no_toc">[m
[31m-                                                Lorem Ipsum[m
[31m-                                            </h2>[m
[31m-                                            <h3 class="no_toc d-none d-md-block">[m
[31m-                                                Lorem Ipsum sit amet[m
[31m-                                            </h3>[m
[31m-                                        </div>[m
[31m-                                    </a>[m
[31m-                                </div>[m
[31m-                            </div>[m
[31m-                        </div>[m
[31m-                    </section>[m
[31m-[m
[31m-                    <!-- Footer middle section with menu blocks -->[m
[31m-                    <section>[m
[31m-                        <div class="row">[m
[31m-                            <div class="col-lg-3 col-md-3 col-sm-6 pb-2">[m
[31m-                                <h4>[m
[31m-                                    <a href="#" title="Vai alla pagina: Amministrazione">Amministrazione</a>[m
[31m-                                </h4>[m
[31m-                                <div class="link-list-wrapper">[m
[31m-                                    <ul class="footer-list link-list clearfix">[m
[31m-                                        <li><a class="list-item" href="#" title="Vai alla pagina: Giunta e consiglio">Giunta e consiglio</a></li>[m
[31m-                                        <li><a class="list-item" href="#" title="Vai alla pagina: Aree di competenza">Aree di competenza</a></li>[m
[31m-                                        <li><a class="list-item" href="#" title="Vai alla pagina: Dipendenti">Dipendenti</a></li>[m
[31m-                                        <li><a class="list-item" href="#" title="Vai alla pagina: Luoghi">Luoghi</a></li>[m
[31m-                                        <li><a class="list-item" href="#" title="Vai alla pagina: Associazioni e società partecipate">Associazioni e società partecipate</a></li>[m
[31m-                                    </ul>[m
[31m-                                </div>[m
[31m-                            </div>[m
[31m-                            <div class="col-lg-3 col-md-3 col-sm-6 pb-2">[m
[31m-                                <h4>[m
[31m-                                    <a href="#" title="Vai alla pagina: Servizi">Servizi</a>[m
[31m-                                </h4>[m
[31m-                                <div class="link-list-wrapper">[m
[31m-                                    <ul class="footer-list link-list clearfix">[m
[31m-                                        <li><a class="list-item" href="#" title="Vai alla pagina: Pagamenti">Pagamenti</a></li>[m
[31m-                                        <li><a class="list-item" href="#" title="Vai alla pagina: Sostegno">Sostegno</a></li>[m
[31m-                                        <li><a class="list-item" href="#" title="Vai alla pagina: Domande e iscrizioni">Domande e iscrizioni</a></li>[m
[31m-                                        <li><a class="list-item" href="#" title="Vai alla pagina: Segnalazioni">Segnalazioni</a></li>[m
[31m-                                        <li><a class="list-item" href="#" title="Vai alla pagina: Autorizzazioni e concessioni">Autorizzazioni e concessioni</a></li>[m
[31m-                                        <li><a class="list-item" href="#" title="Vai alla pagina: Certificati e dichiarazioni">Certificati e dichiarazioni</a></li>[m
[31m-                                    </ul>[m
[31m-                                </div>[m
[31m-                            </div>[m
[31m-                            <div class="col-lg-3 col-md-3 col-sm-6 pb-2">[m
[31m-                                <h4>[m
[31m-                                    <a href="#" title="Vai alla pagina: Novità">Novità</a>[m
[31m-                                </h4>[m
[31m-                                <div class="link-list-wrapper">[m
[31m-                                    <ul class="footer-list link-list clearfix">[m
[31m-                                        <li><a class="list-item" href="#" title="Vai alla pagina: Notizie">Notizie</a></li>[m
[31m-                                        <li><a class="list-item" href="#" title="Vai alla pagina: Eventi">Eventi</a></li>[m
[31m-                                        <li><a class="list-item" href="#" title="Vai alla pagina: Comunicati stampa">Comunicati stampa</a></li>[m
[31m-                                    </ul>[m
[31m-                                </div>[m
[31m-                            </div>[m
[31m-                            <div class="col-lg-3 col-md-3 col-sm-6">[m
[31m-                                <h4>[m
[31m-                                    <a href="#" title="Vai alla pagina: Documenti">Documenti</a>[m
[31m-                                </h4>[m
[31m-                                <div class="link-list-wrapper">[m
[31m-                                    <ul class="footer-list link-list clearfix">[m
[31m-                                        <li><a class="list-item" href="#" title="Vai alla pagina: Progetti e attività">Progetti e attività</a></li>[m
[31m-                                        <li><a class="list-item" href="#" title="Vai alla pagina: Delibere, determine e ordinanze">Delibere, determine e ordinanze</a></li>[m
[31m-                                        <li><a class="list-item" href="#" title="Vai alla pagina: Bandi">Bandi</a></li>[m
[31m-                                        <li><a class="list-item" href="#" title="Vai alla pagina: Concorsi">Concorsi</a></li>[m
[31m-                                        <li><a class="list-item" href="#" title="Vai alla pagina: Albo pretorio">Albo pretorio</a></li>[m
[31m-                                    </ul>[m
[31m-                                </div>[m
[31m-                            </div>[m
[31m-                        </div>[m
[31m-                    </section>[m
[31m-[m
[31m-                    <!-- Footer bottom section with contacts -->[m
[31m-                    <section class="py-4 border-white border-top">[m
[31m-                        <div class="row">[m
[31m-                            <div class="col-lg-4 col-md-4 pb-2">[m
[31m-                                <h4><a href="#" title="Vai alla pagina: Contatti">Contatti</a></h4>[m
[31m-                                <p>[m
[31m-                                    <strong>Comune di Lorem Ipsum</strong><br> Via Roma 0 - 00000 Lorem Ipsum Codice fiscale / P. IVA: 000000000[m
[31m-                                </p>[m
[31m-                                <div class="link-list-wrapper">[m
[31m-                                    <ul class="footer-list link-list clearfix">[m
[31m-                                        <li><a class="list-item" href="#" title="Vai alla pagina: Posta Elettronica Certificata">Posta Elettronica Certificata</a></li>[m
[31m-                                        <li><a class="list-item" href="#" title="Vai alla pagina: URP - Ufficio Relazioni con il Pubblico">URP - Ufficio Relazioni con il Pubblico</a></li>[m
[31m-                                    </ul>[m
[31m-                                </div>[m
[31m-                            </div>[m
[31m-                            <div class="col-lg-4 col-md-4 pb-2">[m
[31m-                                <h4><a href="#" title="Vai alla pagina: Lorem Ipsum">Lorem Ipsum</a></h4>[m
[31m-                            </div>[m
[31m-                            <div class="col-lg-4 col-md-4 pb-2">[m
[31m-                                <div class="pb-2">[m
[31m-                                    <h4><a href="#" title="Vai alla pagina: Seguici su">Seguici su</a></h4>[m
[31m-                                    <ul class="list-inline text-left social">[m
[31m-                                        <li class="list-inline-item">[m
[31m-                                            <a class="p-2 text-white" href="#" target="_blank">[m
[31m-                                                <svg class="icon icon-sm icon-white align-top">[m
[31m-                                                    <use xlink:href="/static/svg/sprite.svg' %}#it-designers-italia"></use>[m
[31m-                                                </svg><span class="sr-only">Designers Italia</span>[m
[31m-                                            </a>[m
[31m-                                        </li>[m
[31m-                                        <li class="list-inline-item">[m
[31m-                                            <a class="p-2 text-white" href="#" target="_blank">[m
[31m-                                                <svg class="icon icon-sm icon-white align-top">[m
[31m-                                                    <use xlink:href="/static/svg/sprite.svg' %}#it-twitter"></use>[m
[31m-                                                </svg><span class="sr-only">Twitter</span>[m
[31m-                                            </a>[m
[31m-                                        </li>[m
[31m-                                        <li class="list-inline-item">[m
[31m-                                            <a class="p-2 text-white" href="#" target="_blank">[m
[31m-                                                <svg class="icon icon-sm icon-white align-top">[m
[31m-                                                    <use xlink:href="/static/svg/sprite.svg' %}#it-medium"></use>[m
[31m-                                                </svg><span class="sr-only">Medium</span>[m
[31m-                                            </a>[m
[31m-                                        </li>[m
[31m-                                        <li class="list-inline-item">[m
[31m-                                            <a class="p-2 text-white" href="#" target="_blank">[m
[31m-                                                <svg class="icon icon-sm icon-white align-top">[m
[31m-                                                    <use xlink:href="/static/svg/sprite.svg' %}#it-behance"></use>[m
[31m-                                                </svg><span class="sr-only">Behance</span>[m
[31m-                                            </a>[m
[31m-                                        </li>[m
[31m-                                    </ul>[m
[31m-                                </div>[m
[31m-                                <div class="pb-2">[m
[31m-                                    <h4><a href="#" title="Vai alla pagina: Newsletter">Newsletter</a></h4>[m
[31m-                                    <p>Form Newsletter</p>[m
[31m-                                      <!--<form action="#" method="post">[m
[31m-                                        <label for="input-newsletter" class="active">Iscriviti per riceverla</label>[m
[31m-                                        <div class="input-group">[m
[31m-                                          <div class="input-group-prepend">[m
[31m-                                            <div class="input-group-text">@</div>[m
[31m-                                          </div>[m
[31m-                                          <input type="text" class="form-control" id="input-newsletter" name="input-newsletter" placeholder="Scrivi il tuo indirizzo email" >[m
[31m-                                          <div class="input-group-append">[m
[31m-                                            <button class="btn btn-outline-secondary" type="button" id="button-addon2">Button</button>[m
[31m-                                          </div>[m
[31m-                                        </div>[m
[31m-                                        <button class="btn btn-default pull-right" type="submit">Iscriviti</button>[m
[31m-                                      </form>-->[m
[31m-                                </div>[m
[31m-                            </div>[m
[31m-                        </div>[m
[31m-                    </section>[m
[31m-                </div>[m
[31m-            </div>[m
[31m-[m
[31m-            <div class="it-footer-small-prints clearfix">[m
[31m-                <div class="container">[m
[31m-                    <h3 class="sr-only">Sezione Link Utili</h3>[m
[31m-                    <ul class="it-footer-small-prints-list list-inline mb-0 d-flex flex-column flex-md-row">[m
[31m-                        <li class="list-inline-item"><a href="#" title="Note Legali">Media policy</a></li>[m
[31m-                        <li class="list-inline-item"><a href="#" title="Note Legali">Note legali</a></li>[m
[31m-                        <li class="list-inline-item"><a href="#" title="Privacy-Cookies">Privacy policy</a></li>[m
[31m-                        <li class="list-inline-item"><a href="#" title="Mappa del sito">Mappa del sito</a> </li>[m
[31m-                    </ul>[m
[31m-                </div>[m
[31m-            </div>[m
[31m-        </footer>[m
[31m-[m
[31m-        <script>window.__PUBLIC_PATH__ = "/static/fonts"</script>[m
[31m-        <script src="/static/js/bootstrap-italia.min.js"></script>[m
[31m-[m
[31m-    </body>[m
[31m-</html>[m
