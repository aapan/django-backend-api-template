from django.shortcuts import render

from rest_framework.response import Response
from rest_framework.views import APIView


class HelloWorld(APIView):
    def get(sef, request):
        return Response({"data": "Hello World!"})
