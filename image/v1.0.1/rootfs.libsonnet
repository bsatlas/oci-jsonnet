local errRootFS(param) =
  error std.format('%s not defined for RootFS object.', param);

{
  new(
    diff_ids=[],
    type='layers',
  ):: {
    type: type,
    diff_ids: diff_ids,

    addDiffID(diff_id):: self {
      diff_ids+: [diff_id],
    },
  },
}
