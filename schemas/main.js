import { existsSync, readFileSync, writeFileSync } from 'node:fs'
import { globSync } from 'glob'
import yaml from 'js-yaml'
import { registerSchema, validate } from '@hyperjump/json-schema/draft-2020-12'
import { bundle } from '@hyperjump/json-schema/bundle'
import { BASIC } from "@hyperjump/json-schema/experimental";

const config = yaml.load(readFileSync('config.yaml', 'utf8'))
const schemas = globSync(config.pattern)

for (const schema of schemas) {
  const schemaObject = yaml.load(readFileSync(schema, { encoding: 'utf-8' }))
  registerSchema(schemaObject, schemaObject.$id)
}
for (const schema of schemas) {
  const schemaObject = yaml.load(readFileSync(schema, { encoding: 'utf-8' }))
  const exampleFile = schema.replace('schema.yaml', 'examples.yaml')

  if (false === existsSync(exampleFile)) {
    continue
  }
  const examples = yaml.load(readFileSync(exampleFile, { encoding: 'utf-8' }))
  await examples.forEach(async (example, key) => {
    const { valid, errors } = await validate(schemaObject.$id, example, BASIC)
    console.log(schema)
    if (false === valid)
      console.error(`Example ${key} is invalid: ${schemaObject.$id}`)
      console.error(errors[0] ?? 'Unknown error')
  })
}

const schema = config.schema
const bundledSchema = await bundle(schema)
const outDir = config.outDir ?? './dist'

if (config.formats.includes('json')) {
  const JSONOutput = JSON.stringify(bundledSchema, null, 2)
  writeFileSync(`${outDir}/schema.json`, JSONOutput, { encoding: 'utf-8' })
}
if (config.formats.includes('yaml')) {
  const YAMLOutput = yaml.dump(bundledSchema)
  writeFileSync(`${outDir}/schema.yaml`, YAMLOutput, { encoding: 'utf-8' })
}
