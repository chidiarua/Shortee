from django.shortcuts import render
from django.views.generic import TemplateView, View
import pyshorteners



class UrlHome(View):
    def post(self, request):
        long_url = "url" in request.POST and request.POST["url"]
        ps = pyshorteners.Shortener()
        short_url = ps.clckru.short(long_url)
        return render(
            request,
            "index.html",
            context={"short_url": short_url, "long_url": long_url},
        )

    def get(self, request):
        return render(request, "index.html")

    
