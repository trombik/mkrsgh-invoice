# Scripts to make invoices at `mkrsgh`

## Requirements

- `ruby` 2.7
- `bundler` (`[sysutils/rubygem-bundler](https://www.freshports.org/sysutils/rubygem-bundler)`)
- `chrome`

## Install

```console
bundle install
```

```console
cp issuer_example.yml issuer.yml
```

## Usage

The [Rakefile](Rakefile) generates an invoice in either HTML (the default),
or PDF.

### Creating an invoice in HTML

```console
env INVOICE_FILE=invoice.yml bundle exec rake
```

Or

```console
env INVOICE_FILE=invoice.yml bundle exec rake html
```

### Creating an invoice in PDF

```console
env INVOICE_FILE=invoice.yml bundle exec rake pdf
```

Or open the HTML version in your browser, and print the page as PDF.
