@def title = "Members"
@def hascode = false
@def date = Date(2019, 3, 22)
@def rss = "group member description"

@def tags = String[]

# Members
\newcommand{\insertprofile}[3]{
@@row
@@container
@@left ![](/assets/member_profile/!#1/picture.jpg) @@
@@
**!#2**

email:!#3

\textinput{/assets/member_profile/!#1/profile.txt}
~~~
<div style="clear: both"></div>
~~~
@@
}

## PI
\insertprofile{iguana}{Mike Zaletel}{mikezaletel (at) berkeley.edu}

## Postdocs

## Grad Students
\insertprofile{iguana_grad}{Marine iguana}{iguana (at) nowhere.tv}
