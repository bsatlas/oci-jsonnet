local errConfig(param) =
  error std.format('%s not defined for Config object.', param);

{
  new(
    os=errConfig('os'),
    architecture=errConfig('architecture'),
    rootfs=errConfig('rootfs'),
    created=null,
    author=null,
    config=null,
    history=null,
  ):: {
    os: os,
    architecture: architecture,
    rootfs: rootfs,
    [if created != null then 'created']: created,
    [if author != null then 'author']: author,
    [if history != null then 'history']: history,
    [if config != null then 'config']: config,
  },
}
