// Quyidagi berilgan chizmaga asoslanib mixin va boshqa class larni hosil qiling.

mixin Flutter on Creature {}
mixin Chirp on Creature {}
mixin Write on Creature {}

abstract class Creature {}

class Human extends Creature with Write {}

abstract class Bird extends Creature with Chirp, Flutter {}

class QuickBird extends Bird with Write {}

class Dash extends Bird {}

class Parrot extends Bird {}

abstract class Insect extends Creature with Flutter {}

class Mosquito extends Insect {}
