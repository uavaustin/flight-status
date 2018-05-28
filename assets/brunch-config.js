exports.config = {
  files: {
    javascripts: {
      joinTo: 'bundle.js'
    },
    stylesheets: {
      joinTo: 'style.css'
    }
  },

  conventions: {
    assets: /^(static)/
  },

  paths: {
    watched: ['static', 'styles', 'scripts'],
    public: '../priv/static'
  },

  plugins: {
    babel: {
      presets: ['latest', 'react'],
      ignore: [/vendor/]
    },
    processors: [
      require('autoprefixer')
    ]
  },

  modules: {
    autoRequire: {
      'bundle.js': ['scripts/main.jsx']
    }
  },

  npm: {
    enabled: true
  }
};
