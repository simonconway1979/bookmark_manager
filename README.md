# User stories:

- As a Makers Student
  So that I can access my websites quickly
  I want to see a list of all my links.

- As a Makers Student
  So I can save my favourite websites
  I want to be able to add new links.

- As a Makers Student
  So I can group my bookmarks
  I want to be able to add tags to my links.

- As a Makers Student
  So I can search by category
  I want to filter my links by tag


#CRUD research (From wikipedia)

##Create, read, update and delete

In computer programming, create, read, update and delete[1] (as an acronym CRUD) are the four basic functions of persistent storage.[2] Alternate words are sometimes used when defining the four basic functions of CRUD, retrieve instead of read, modify instead of update, or destroy instead of delete. CRUD is also sometimes used to describe user interface conventions that facilitate viewing, searching, and changing information; often using computer-based forms and reports. The term was likely first popularized by James Martin in his 1983 book Managing the Data-base Environment.[1][3] The acronym may be extended to CRUDL to cover listing of large data sets which bring additional complexity such as pagination when the data sets are too large to hold easily in memory.

Another variation of CRUD is BREAD, an acronym for "Browse, Read, Edit, Add, Delete".[citation needed] This extension is mostly used in context with data protection concepts, when it is legally not allowed to delete data directly. Locking the data prevents the access for users without destroying still needed data. Yet another variation, used before CRUD became more common, is MADS, an acronym for "Modify, Add, Delete, Show."[citation needed]

The acronym CRUD refers to all of the major functions that are implemented in relational database applications. Each letter in the acronym can map to a standard SQL statement, HTTP method (this is typically used to build RESTful APIs[4]) or DDS operation:

Operation	SQL	HTTP	DDS
Create	INSERT	PUT / POST	write
Read (Retrieve)	SELECT	GET	read / take
Update (Modify)	UPDATE	POST / PUT / PATCH	write
Delete (Destroy)	DELETE	DELETE	dispose

The comparison of the database oriented CRUD operations to HTTP methods has some flaws. Strictly speaking, both PUT and POST can create resources; the key difference is that POST leaves it for the server to decide at what URI to make the new resource available, whilst PUT dictates what URI to use; URIs are of course a concept that doesn't really line up with CRUD. The significant point about PUT is that it will replace whatever resource the URI was previously referring to with a brand new version, hence the PUT method being listed for Update as well. PUT is a 'replace' operation, which one could argue is not 'update'.

Although a relational database provides a common persistence layer in software applications, numerous other persistence layers exist. CRUD functionality can be implemented with an object database, an XML database, flat text files, custom file formats, tape, or card, for example.

##User interface
CRUD is also relevant at the user interface level of most applications. For example, in address book software, the basic storage unit is an individual contact entry. As a bare minimum, the software must allow the user to

Create or add new entries
Read, retrieve, search, or view existing entries
Update or edit existing entries
Delete/deactivate/remove existing entries

Without at least these four operations, the software cannot be considered complete. Because these operations are so fundamental, they are often documented and described under one comprehensive heading, such as "contact management", "content management" or "contact maintenance" (or "document management" in general, depending on the basic storage unit for the particular application).
