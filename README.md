# Saxon

Use Saxon is a GitHub Action that sets up the Saxon-HE processor.

## Inputs

* `args`: Arguments to pass to the Saxon-HE command.

## Example Usage

```
    - name: Foobar transform (XSLT)
      uses: pdaengeli/use-saxon-he-j@12.8
      with:
        args: -s:foo.xml -xsl:bar.xsl -o:baz.xml

```

---

# License

The open-source Saxon-HE product is offered under the [Mozilla Public License version 2.0](https://www.mozilla.org/MPL/2.0/).