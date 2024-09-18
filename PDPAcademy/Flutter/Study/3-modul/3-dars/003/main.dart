// Quyidagi berilgan chizmaga asoslanib mixin va boshqa class larni hosil qiling.

mixin Walk {}
mixin Swim {}
mixin Fly {}

abstract class Animal {}

abstract class Mammal extends Animal {}

class Dolphin extends Mammal with Swim {}

class Bat extends Mammal with Walk, Fly {}

class Cat extends Mammal with Walk {}

abstract class Bird extends Animal {}

class Dove extends Bird with Walk, Fly {}

class Duck extends Bird with Walk, Swim, Fly {}

abstract class Fish extends Animal {}

class Shark extends Fish with Swim {}

class FlayingFish extends Fish with Swim, Fly {}
