# Ulmus

Ulmus is a library for doing Functional Reactive Programming (FRP) in Clojure and Clojurescript.

## Intro

Ulmus is a small library designed to facilitate a functional-reactive style of programming. It's inspired by Elm and RX, primarily. Some of the API apes Elm although it makes no attempt to be complete or exclusive in doing so.

The basic building block of Ulmus is termed a signal. A signal is, conceptually, a value that can change over time. Signals can be composed using an array of standard functional operators (defined in ulmus.core) or by applying transducers. These operators all return new signals that can be further composed. When the value on any of the signals update, the entire computation graph is re-run, keeping everything up to date. The current value of a signal can be dereferenced just like an atom.

## Example

```clojure
(def left-right-$
  (ulmus/map
    (fn [[mouse-x win-width]]
      (if (> mouse-x (/ win-width 2))
        :right
        :left))
  (ulmus/zip
    mouse-x-$
    window/width-$)))
```

## Status

Ulmus is fairly well-tread at this point, but still beta quality.  It shouldn't be relied on yet for anything mission critical.

## Todo

* Api documentation
* Spec

## License

Copyright 2018 Jeremy Kross

Distributed under the Eclipse Public License either version 1.0 or (at your option) any later version.