import { existsSync, readFileSync, writeFileSync } from 'node:fs'
import { globSync } from 'glob'
import yaml from 'js-yaml'
import { registerSchema, validate } from '@hyperjump/json-schema/draft-2020-12'
import { bundle } from '@hyperjump/json-schema/bundle'

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
    const { valid } = await validate(schemaObject.$id, example)
    console.log(schema)
    if (false === valid)
      console.error(`Example ${key} is invalid: ${schemaObject.$id}`)
  })
}

const schema = config.schema
const bundledSchema = await bundle(schema)

if (config.formats.includes('json')) {
  const JSONOutput = JSON.stringify(bundledSchema, null, 2)
  writeFileSync('./schema.json', JSONOutput, { encoding: 'utf-8' })
}
if (config.formats.includes('yaml')) {
  const YAMLOutput = yaml.dump(bundledSchema)
  writeFileSync('./schema.yaml', YAMLOutput, { encoding: 'utf-8' })
}
