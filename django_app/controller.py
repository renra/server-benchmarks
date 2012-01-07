from django.shortcuts import render_to_response

def serve(request):
  return render_to_response('index.html')
