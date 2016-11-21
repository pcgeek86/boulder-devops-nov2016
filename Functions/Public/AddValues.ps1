function AddValues {
	[CmdletBinding()]
	param (
	  [int] $First,
		[int] $Second
	)

  return $First + $Second
}
