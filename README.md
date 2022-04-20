# Scripts to make invoices at `mkrsgh`

A template and scripts to make invoices, based on
[barbosa89/invoice-template](https://raw.githubusercontent.com/barbosa89/invoice-template).

## Example

See [example.pdf](example.pdf).

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
