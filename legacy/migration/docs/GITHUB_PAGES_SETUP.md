# GitHub Actions + Pages Setup

This repository now includes:

- CI workflow: `.github/workflows/ci.yml`
- Deploy workflow: `.github/workflows/deploy-pages.yml`
- Custom domain file: `CNAME` (set to `freesoftwaremagazine.com`)

## 1) Set GitHub Pages source

In GitHub:

1. Open `Settings -> Pages`.
2. Under **Build and deployment**, set **Source** to `GitHub Actions`.

## 2) Configure production domain + HTTPS

In GitHub:

1. Open `Settings -> Pages`.
2. Set **Custom domain** to `freesoftwaremagazine.com`.
3. Save.
4. Once DNS is live and certificate is issued, enable **Enforce HTTPS**.

## 3) DNS records (apex + www)

At your DNS provider, set:

```txt
Type   Name   Value
A      @      185.199.108.153
A      @      185.199.109.153
A      @      185.199.110.153
A      @      185.199.111.153
AAAA   @      2606:50c0:8000::153
AAAA   @      2606:50c0:8001::153
AAAA   @      2606:50c0:8002::153
AAAA   @      2606:50c0:8003::153
CNAME  www    <your-github-user-or-org>.github.io
```

Example checks:

```bash
dig +short A freesoftwaremagazine.com
dig +short AAAA freesoftwaremagazine.com
dig +short CNAME www.freesoftwaremagazine.com
```

## 4) Verify HTTPS + redirects

After DNS propagation and first successful deploy:

```bash
curl -I http://freesoftwaremagazine.com
curl -I https://freesoftwaremagazine.com
curl -I http://www.freesoftwaremagazine.com
curl -I https://www.freesoftwaremagazine.com
```

Expected:

- `http` redirects to `https`
- apex and `www` both resolve and redirect to the configured canonical host

## 5) CI behavior

On every PR targeting `master` or `main`, CI runs:

1. `bundle exec jekyll build`
2. `bundle exec ruby legacy/migration/scripts/validate_fsm_transforms.rb`
3. `bundle exec ruby legacy/migration/scripts/validate_site_integrity.rb`

On pushes to `master` or `main`, deploy workflow:

1. runs the same build + validations
2. uploads `_site` as Pages artifact
3. deploys via `actions/deploy-pages`

## 6) Branch protection + PR workflow

Set branch protection on the default branch (`master` currently):

1. `Settings -> Branches -> Add branch protection rule`.
2. Branch pattern: `master` (or `main` if you rename).
3. Enable:
   - **Require a pull request before merging**
   - **Require status checks to pass before merging**
   - **Require branches to be up to date before merging** (recommended)
4. Select CI checks from the `CI` workflow (job `validate`).
5. Optionally disable direct pushes for admins too.

Recommended publication policy:

- Article additions and edits happen via PR only.
- Merge only when CI is green.

## 7) Domain verification (recommended)

To protect against domain takeover:

1. Add domain verification in account/org `Settings -> Pages`.
2. Create the requested `_github-pages-challenge-...` TXT record.
3. Click verify.
