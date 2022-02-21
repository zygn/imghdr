# Imghdr

[English](https://github.com/zygn/imghdr#readme) | [한국어](https://github.com/zygn/imghdr/blob/main/README_ko_kr.md)


Imghdr은 이미지의 타입을 특정하는 라이브러리이며, Python의 [imghdr](https://docs.python.org/3/library/imghdr.html) 모듈을 본떠 만들어진 RubyGem 입니다.

## 설치

Gemfile에 다음 라인을 추가하세요.

```ruby
gem 'imghdr'
```

그리고 다음 명령어를 실행하세요.

    $ bundle install

아니면, 간단히 아래와 같이 설치할 수 있습니다.

    $ gem install imghdr

## 사용법

```ruby
require 'imghdr'

Imghdr.what("Some-Pic.jpg")
#    => 'jpeg'

Imghdr.what("Some-Pic.gif")
#    => 'gif'

Imghdr.what("Some-Music.mp3")
#    => 'nil' (nilClass)
```

## 라이선스

이 Gem은 [MIT License](https://opensource.org/licenses/MIT) 를 따르고 있습니다.

## 기여

더 나은, 빠른 로직이 있거나, 추가하고 싶은 타입이 있으면, Pull Request를 보내서 제안해주세요.

## 왜 만들었나요?

Discord.rb로 가챠봇을 만들다가 이미지 타입을 알아내는 라이브러리가 없는걸 알고, 
급하게 Python의 [imghdr](https://docs.python.org/3/library/imghdr.html) 라이브러리를 ~~베껴~~참고하여 RubyGem을 만들었습니다.


