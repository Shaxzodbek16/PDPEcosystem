from django.contrib import admin
from django.urls import path, include
from drf_yasg import openapi
from drf_yasg.views import get_schema_view
from rest_framework.permissions import AllowAny

schema_view = get_schema_view(
    openapi.Info(
        title="Netflix API",
        default_version='v1',
        description="API for Netflix",
        terms_of_service="https://www.netflix.com/terms/",
        contact=openapi.Contact(email="Muxtorov Shaxzodbek <muxtorovshaxzodbek16@gmail.com>"),
        license=openapi.License(name="Shaxzodbek"),
    ),
    public=True,
    permission_classes=(AllowAny,)
)

urlpatterns = [
    path('Shaxzodbek/', admin.site.urls),
    path('', include('Movies.urls')),
    path('swagger/', schema_view.with_ui('swagger', cache_timeout=0), name='schema-swagger-ui'),
    path('redocs/', schema_view.with_ui('redoc', cache_timeout=0), name='schema-redoc-ui'),
]
