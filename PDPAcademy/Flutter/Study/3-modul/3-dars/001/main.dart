// Quyidagi berilgan chizmaga asoslanib mixin va boshqa class larni hosil qiling.

mixin Flutter{}
mixin Chirp{}
mixin Write on Bird{}

abstract class Bird  with Flutter, Chirp{}

class QuickBird extends Bird with Write{}
class Dash extends Bird{}
class Parrot extends Bird{}
