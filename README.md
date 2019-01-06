# base-containers-orphans

This package provides some orphan instances of types from `containers` and classes from `base`. See the following table.

|containers \\ base|0.4.9|0.4.10|0.4.11|0.4.12|
|------------------|-----|------|------|------|
|           0.5.7.1| △  |  △  |  ー  | ー   |
|           0.5.8.2| △  |  △  |  ー  | ー   |
|           0.5.9.2| ○  |  ○  |  ー  |  ー  |
|          0.5.10.1| ○  |  ○  | ー   | ―   |
|          0.5.11.0| ○  |  ○  | ○   | ○   |
|           0.6.0.1| ○  |  ○  | ○   | ○   |

In the table, ○ means that combination of `containers` and `base` is compatible,　― means they are incompatible, △ means they are compatible but lacks some possible instances.

Specifically, at the △-marked entry in above table, the following instances are missing, thus they are provided by this package.

* `Eq1`, `Ord1`, `Show1` instances for `IntMap`, `Set`, `Map`, `Seq`, `Tree`
* `Eq2`, `Ord2`, `Show2` instances for `Map`
* `Generic1` instance for `Tree`

Note that this package is not frequently needed, as you often can depend on newer version of `containers` even with older `base`. This package is for the case when using newer `containers` is not possible for some reasons.
