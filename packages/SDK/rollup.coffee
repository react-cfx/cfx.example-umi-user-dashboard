# import dd from 'ddeyes'
import {
  coffee2
  coffeepath
} from 'cfx.rollup-plugin-coffee2'
import cleanup from 'rollup-plugin-cleanup'
# import nodent from 'rollup-plugin-nodent'
# import rollupBabel from 'rollup-plugin-babel'
import asyncAwait from 'rollup-plugin-async'

export default
  input: './index.js'
  output:
    file: './dist/bundle.js'
    format: 'cjs'

  plugins: [

    coffee2
      bare: true
      sourceMap: true
    asyncAwait()
    coffeepath()

    # nodent()
    # rollupBabel
    #   babelrc: false
    #   plugins: [
    #     'transform-async-to-generator'
    #     'external-helpers-2'
    #   ]

    cleanup()
  ]
