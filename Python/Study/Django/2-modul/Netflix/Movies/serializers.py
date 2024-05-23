from datetime import datetime

from rest_framework import serializers
from rest_framework.exceptions import ValidationError

from Movies.models import Movie, Actor, Comment


class MovieSerializer(serializers.ModelSerializer):

    class Meta:
        model = Movie
        fields = '__all__'


class ActorSerializer(serializers.ModelSerializer):

    class Meta:
        model = Actor
        fields = '__all__'

    def validate_birthdate(self, value):
        new_value = datetime.strptime(str(value), '%Y-%m-%d')
        reference_date = datetime(1950, 1, 1)

        if new_value.year < reference_date.year:
            raise ValidationError(detail="Tug'ilgan yilingiz 1950 yildan katta bo'lishi kerak.")
        elif new_value.year == reference_date.year:
            if new_value.month < reference_date.month:
                raise ValidationError(detail="Tug'ilgan oyingiz yanvar oyidan katta bo'lishi kerak.")
            elif new_value.month == reference_date.month:
                if new_value.day < reference_date.day:
                    raise ValidationError(detail="Tug'ilgan kuningiz 1-kundan katta bo'lishi kerak.")
        return value


class CommentSerializer(serializers.ModelSerializer):
    user = serializers.ReadOnlyField(source='user.username')

    class Meta:
        model = Comment
        fields = '__all__'
