component table="tArticles" {
    property name="articleID" fieldtype="id" generator="native" setter=false;
    property name="title" ormtype="text" column="artTitle" length="255";
    property name="content" ormtype="text" column="artContent";
    property name="dateCreated" ormtype="date";
    property name="isPublished" ormtype="boolean";
}