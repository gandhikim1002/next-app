// @ts-check

/**
 * @type {import('next').NextConfig}
 **/
const nextConfig = {
  basePath: '/gh-pages',
  images: {
    loader: 'akamai',
    path: '/',
  }
}

module.exports = nextConfig
