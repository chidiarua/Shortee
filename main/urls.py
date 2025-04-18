from django.urls import path
from .views import UrlHome, TestView

urlpatterns = [
    path("", UrlHome.as_view(), name="url-home"),
]
