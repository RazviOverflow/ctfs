All things are lost to time...

# Solution

Very silly challenge. Oneliner to solve it:
`$ binwalk -e ancient.fossil; cd _ancient.fossil.extracted; rm *.zlib; cat * | grep flag`

# Flag: flag{2ed33f365669ea9f10b1a4ea4566fe8c}