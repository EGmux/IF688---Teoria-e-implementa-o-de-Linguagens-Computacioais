#import "@preview/touying:0.6.1": *
#import "cintheme.typ": *

#show: cintheme.with(
  aspect-ratio: "16-9",
  // Add your presentation info
  config-info(
    title: [Parsec Notes],
    author: [Enzo Gurgel Bissoli(egb2)],
    date: datetime.today(),
    institution: [UFPE CIn],
    logo: image("cinhorizontalmark.png",height: 1.5cm) ,  // Optional
    logoalternative: image("cinhorizontalmarkcolored.png", height: 1.5cm),
    placeholder: [],
  ),
)

#title-slide()
#show link: underline


#slide()[
  == Intro
  > pros
  - first class support
  - composition first design
  - homogenity of implementation

  > challenges
  - monadic (leverage context)
  - efficient
  - usable (good devUX)

  > cons
  - space leak (fixed in paper)
]

#slide()[
  == Grammars and Parsers
  ```haskell
  type Parser a
  class MonadicParser where
    return :: a -> Parser a
    (>>=) :: Parser a -> (a -> Parser b) -> Parser b
    satisfy :: (Char -> Bool) -> Parser Char
    (<|>) :: Parser a -> Parser a -> Parser a

  ```
  == Interlude into combinators
]
