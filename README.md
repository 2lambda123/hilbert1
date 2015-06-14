# Hilbert

[![Build Status](https://travis-ci.org/gogotanaka/hilbert.svg?branch=master)](https://travis-ci.org/gogotanaka/hilbert) [![Coverage Status](https://coveralls.io/repos/gogotanaka/Hilbert/badge.png?branch=master)](https://coveralls.io/r/gogotanaka/Hilbert?branch=master) [![Code Climate](https://codeclimate.com/github/gogotanaka/Hilbert/badges/gpa.svg)](https://codeclimate.com/github/gogotanaka/Hilbert) [![Dependency Status](https://gemnasium.com/gogotanaka/Hilbert.svg)](https://gemnasium.com/gogotanaka/Hilbert)

Hilbert lets you have a sense of mathematics using a keyboard, the same as you would with a pen.

#philosophy

* Enjoy mathematics with keyboard like with pen and paper.

* Implement 'mathematics'


### with Pen and paper

```
+-------------+       +--------------+       +---------------+
| Mathematics | <-->  | Human brains | <-->  | Pen and paper |
+-------------+       +--------------+       +---------------+
```

### with Hilbert
```
+-------------+       +--------------+       +---------+
| Mathematics | <-->  | Human brains | <-->  | Hilbert |
+-------------+       | or computer  |       +---------+
                      +--------------+
```

## Demo

The code below is input and output for the Hilbert interpreter. (You can try it with typing `hilbert`.)

```
xxxxyyyxxzz
=> (x^6)(y^3)(z^2)
```

### Differentiate

```
d/dx(cos(x))
=> -sin(x)

d/dy(xy)
=> x

d/dx(e^x)
=> e^x
```

### Integrate

```
S(log(x)dx)
=> x*log(x) - x

S(sin(x)dx)
=> -cos(x)
```

<!-- ### Limit

```
lim[x->oo] (1 + 1/x)^x
=> 2.7182682371744895

lim[x->0] 1/x
=> oo
```

### Sigma
```
∑[x=0,10] x
=> 55.0
```

### Matrix

```
(1 2 3; 4 5 6)
=> (1 2 3; 4 5 6)

(1 2 3; 4 5 6) + (1 2 3; 4 5 6)
=> (2 4 6; 8 10 12)

(1 2 3; 4 5 6) * (1 2 3)
=> (14 32)
``` -->

### Function
```
f(x, y) = xy
f(1, 2)
=> 2
```


<!-- ## How to use(WIP)

    $ git clone https://github.com/gogotanaka/hilbert
    $ cd hilbert
    $ ./

Install the `hilbert` gem.

    $ gem install hilbert

Note to OS X Users: If the above `gem` command does not work with the stock version of Ruby (due to not being able to build a target indicated in the Makefile), then you will need to install a version of Ruby that includes the appropriate header files. Using [homebrew](http://brew.sh/) (`brew install ruby`) will suffice. -->

## Interpreter

    $ hilbert
    Enjoy! ->


## Contributing

Any PRs or issues are welcome. (Please make them to [the `develop` branch](https://github.com/gogotanaka/Hilbert/tree/develop).)

You can become a committer, even if you only commit once.
